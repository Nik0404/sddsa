package com.DAO;

import com.entity.ToolsDtls;
import java.util.List;

public interface ToolsDao {
    public boolean addTools(ToolsDtls td);
    
    public List<ToolsDtls> getAllTools();
    
    public ToolsDtls getToolsById(int id);
    
    public boolean updateEditTools(ToolsDtls td);
    
    public boolean deleteTools(int id);
    
    public List<ToolsDtls> getNewTools();
}
