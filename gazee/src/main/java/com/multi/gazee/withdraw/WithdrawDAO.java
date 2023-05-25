package com.multi.gazee.withdraw;

import com.multi.gazee.transactionHistory.TransactionHistoryVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class WithdrawDAO {
    @Autowired
    SqlSessionTemplate my;
    
    public List<WithdrawVO> listWithdraw() {
        List<WithdrawVO> withdrawList = my.selectList("withdraw.listWithdraw");
        return withdrawList;
    }
    
    public WithdrawVO oneWithdrawById(String id) {
        return my.selectOne("withdraw.oneWithdrawById", id);
    }
    
    public int sumCommission() {
        int totalCommission = my.selectOne("withdraw.sumCommission");
        return totalCommission;
    }
}