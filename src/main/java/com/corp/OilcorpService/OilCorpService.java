package com.corp.OilcorpService;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.corp.OilcorpModel.OilCorp;
import com.corp.OilcorpRepository.Repository;
import com.corp.OilcorpServiceMethods.OilcorpMethods;
@Service
public class OilCorpService implements OilcorpMethods {
@Autowired
private	Repository repo;

	public OilCorp saveData(OilCorp data) {

		repo.save(data);
		return data;
	}

	@Override
	public List<OilCorp> saveCorps(List<OilCorp> corps) {
		repo.saveAll(corps);
		
		return corps;
	}

	
	public OilCorp updateCorp(OilCorp obj) {
		int i=obj.getBranch();
	  OilCorp e =repo.findById(i).orElse(null);
	  e.setBranchManager(obj.getBranchManager()); 
	  e.setOilReserves(obj.getOilReserves());
	  e.setBarrelPrice(obj.getBarrelPrice());

		 e.setEmp(obj.getEmp());
//		 e.setPrices(obj.getPrices());
//		 e.setTransaction(obj.getTransaction());
		return repo.save(obj);
	}
	public OilCorp getBYId(Integer id) {
		
		return repo.findById(id).get();
		
	}


	public List<OilCorp> getAll() {
		
		
		return repo.findAll() ;
	}


	public String deleteBYId(Integer id) {
		
		 repo.deleteById(id);
		 return "deleted with Your id:"+id+"Succesfully";
	}

}
