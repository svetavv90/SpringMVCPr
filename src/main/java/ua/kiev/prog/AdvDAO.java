package ua.kiev.prog;

import java.util.List;

public interface AdvDAO {
	List<Advertisement> list();
    List<Advertisement> list(String pattern);
    void changeStatusToDelete(long id);
    void changeStatusToRestore(long id);
    List<Advertisement> selectedList();
	void add(Advertisement adv);
    void delete(long id);
    byte[] getPhoto(long id);
}
