package com.multi.gazee.charge;

import com.multi.gazee.transactionHistory.TransactionHistoryVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ChargeDAO {
    @Autowired
    SqlSessionTemplate my;
    public List<ChargeVO> listCharge() {
        List<ChargeVO> chargeList = my.selectList("charge.listCharge");
        return chargeList;
    }
    
}
