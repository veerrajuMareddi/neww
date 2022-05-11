package com.corp.OilcorpServiceMethods;

import java.util.List;

import com.corp.OilcorpModel.OilCorp;

public interface OilcorpMethods  {
	 OilCorp saveData(OilCorp data);
	 List<OilCorp>saveCorps(List<OilCorp> corps);
	 OilCorp updateCorp(OilCorp obj);
	 OilCorp getBYId(Integer id);
	 List<OilCorp> getAll();
	 String deleteBYId(Integer id);

}
