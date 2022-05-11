package com.corp.OilcorpController;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.corp.OilcorpModel.OilCorp;
import com.corp.OilcorpModel.OilCorpEmployees;
import com.corp.OilcorpModel.OilCorpPrices;
import com.corp.OilcorpModel.OilCorpSelect;
import com.corp.OilcorpRepository.OilCorpSelectReppo;
//import com.corp.OilcorpModel.OilCorpTransactions;
import com.corp.OilcorpRepository.OilCropEmployeesRepository;
import com.corp.OilcorpRepository.PricesRepository;
import com.corp.OilcorpRepository.Repository;
//import com.corp.OilcorpRepository.TransactionRepository;
import com.corp.OilcorpService.OilCorpService;

@Controller
@RequestMapping("/src")
public class OilCorpController {
	
	
	  @Autowired private OilCorpService service;
	  
	  @Autowired private Repository repo;
	  
	  @Autowired private OilCropEmployeesRepository empSer;
	  
	  @Autowired private PricesRepository price;
	  
	  @Autowired private OilCorpSelectReppo use; 
	 

	@GetMapping("/index")
	public String homePage() 
	{
		return "index";
	}
	
	@GetMapping("/callsave")
	public String savepage()
	{
		return "save";
	}
	@GetMapping("/country")
	public String sh(Model model)
	{
		OilCorp op =repo.getById(1);
		model.addAttribute("pric",op);
		return "many";
	}
	@RequestMapping("/saveCountry")
	public String fe(@ModelAttribute OilCorpSelect ocp,Model model )
	{
		OilCorp cop=repo.findBybranch(3);
		ocp.setCon(cop);
		model.addAttribute("addi",ocp);
		use.save(ocp);
		return"out";
	}
	@GetMapping("/alget")
	public String gd(Model model)
	{
		List<OilCorpSelect> os= use.findAll();
		model.addAttribute("addii",os);
		return "list";
	}
	@RequestMapping("/saveal")
	public String f(@ModelAttribute OilCorpSelect ocp,Model model )
	{
		OilCorp cop=ocp.getCon();
		ocp.setCon(cop);
		//model.addAttribute("addi",ocp);
		use.save(ocp);
		return"index";
	}

	@RequestMapping("/saveModel")
	public String savei(@ModelAttribute OilCorp oil, Model model)
	{
		OilCorpEmployees cop = oil.getEmp();
		cop.setCorp(oil);
	    model.addAttribute("add",oil);
		OilCorpPrices ops=oil.getPrices();
		ops.setOilPrices(oil);		
		service.saveData(oil);	
		return "employees";
	}
	@RequestMapping("/employees")
	public String sts(@ModelAttribute("pric") OilCorp oil)
	{
		
		return "simple";
	}
	@RequestMapping("/saveTotal")
	public String sav(@ModelAttribute("details") OilCorp oil)
	{
		  OilCorpEmployees cop = oil.getEmp(); 
		  cop.setCorp(oil);
		///  model.addAttribute("add",oil);
		  OilCorpPrices ops=oil.getPrices();
		  ops.setOilPrices(oil);
		 		
		service.saveData(oil);	
		return "single";
	}
	@PostMapping("/ps")
	public OilCorp met(@RequestBody OilCorp op)
	{
		return service.saveData(op);
	}
	
	@GetMapping("/get")
	public String view(Model model) 
	{
		List<OilCorp> oilCorp = service.getAll();
		model.addAttribute("oilCorp", oilCorp);
		return "result";
	}
		
	@GetMapping("/update")
	public String map(@RequestParam("Id") int id, Model model)
	{
		OilCorp oc = service.getBYId(id);
		model.addAttribute("oil", oc);
		return"update"; 
	}
	
    @GetMapping("/child")
    public String call()
    {
	    return("byid");
    }


	@PostMapping("/getByChild")
	public String get(@ModelAttribute OilCorpEmployees id,Model model)
	{
		String num=id.getAssistManager();		
		List<OilCorpEmployees> op= empSer.getByAssistManager(num);
		model.addAttribute("getId",op);
		return "unique";
	}
	
	
	@GetMapping("/parent")
	public String child()
	{
		return("/getByparentChild");
	}
	
	
	@PostMapping("/getByparent")
	public String getg(@ModelAttribute OilCorp id,Model model) 
	{
		int number=id.getBranch();
		OilCorp op= repo.findBybranch(number);
		model.addAttribute("getId",op);
		return "parentId";
	}
	
	@GetMapping("/getByparentChld")
	public String getgc(Model model) 
	{
		List<OilCorpSelect> c =new ArrayList<>();
		List<OilCorpSelect> uOiL = use.findAll();
		//OilCorpSelect oo= uOiL.get();
		//int ab = oo.getCon().getBranch();
		OilCorp op= repo.findBybranch(8);
	//	model.addAttribute("",op);
		for(OilCorpSelect j : uOiL)
		{
			if(j.getCon()!=null) {
			if(j.getCon().getBranch()==4)
			{
				c.add(j);
			}
			}
		}
		//System.out.println(ab);
		//model.addAttribute("op1",oo);
		model.addAttribute("ad",c);
		model.addAttribute("ada",op);

		
		return "sampled";
	}
	@GetMapping("/getByparentChild")
	
	public String getgcd(Model model) 
	{
		
		Optional<OilCorpSelect> uOiL = use.findById(2);
		OilCorpSelect oo= uOiL.get();
		int ab = oo.getCon().getBranch();
		OilCorp op= repo.findBybranch(ab);
		System.out.println(ab);
		model.addAttribute("op1",oo);
		model.addAttribute("op",op);
		return "sampled";
	}
	
		
	@GetMapping("/deleteById")
	public String delete(@RequestParam("Id") Integer id) throws InterruptedException
	{
		List<OilCorpSelect> uil=use.findAll();
		for(OilCorpSelect j : uil)
		{
			if(j.getCon()!=null) {
			if(j.getCon().getBranch()==id)
			{
				int ij =j.getBranch();
				use.deleteById(ij);
			}
			}
		}
		Thread.sleep(2000);
		service.deleteBYId(id);
		return "redirect:/src/get";
	}
	
}
