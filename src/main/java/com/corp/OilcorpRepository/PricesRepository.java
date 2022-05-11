package com.corp.OilcorpRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.corp.OilcorpModel.OilCorpPrices;

public interface PricesRepository extends JpaRepository<OilCorpPrices, Integer>
{

}
