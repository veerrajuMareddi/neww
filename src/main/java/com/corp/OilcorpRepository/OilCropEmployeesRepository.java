package com.corp.OilcorpRepository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.corp.OilcorpModel.OilCorpEmployees;
public interface OilCropEmployeesRepository extends JpaRepository<OilCorpEmployees, Integer>
{
OilCorpEmployees getBySalary(Double salary);
List<OilCorpEmployees> getByAssistManager(String assistManager);

}
