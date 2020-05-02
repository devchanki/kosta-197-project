/*
 * package aptogether.action;
 * 
 * import java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import aptogether.model.Option; import aptogether.model.Poll; import
 * aptogether.model.PollService;
 * 
 * public class OptionListAction implements Action {
 * 
 * @Override public ActionForward execute(HttpServletRequest request,
 * HttpServletResponse response) throws Exception { PollService service =
 * PollService.getinstance(); ActionForward forward = new ActionForward(); Poll
 * poll = new Poll();
 * 
 * List<Option> item = service.OptionListService(request);
 * System.out.println(item); request.setAttribute("item", item);
 * 
 * // int seq = Integer.parseInt(request.getParameter("poll_seq")); // Poll poll
 * = service.OptionListService(seq); service.PollHitcountService(request);
 * 
 * forward.setRedirect(false); forward.setUrl("/dist/pollListview.jsp");
 * 
 * return forward; }
 * 
 * }
 */
