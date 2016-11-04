package co.edu.usbcali.mathusb.dataaccess.dao;

import java.util.List;

import co.edu.usbcali.mathusb.dataaccess.api.Dao;
import co.edu.usbcali.mathusb.modelo.EvaPregRes;


/**
* Interface for   EvaPregResDAO.
*
*/
public interface IEvaPregResDAO extends Dao<EvaPregRes, Long> {
	
	public EvaPregRes obtenerEvaPregResDadoIdEvalYIdPreg(Long idEval, Long idPreg);
	
	public EvaPregRes obtenerEvaPregResDadoIdEvalYIdPregYIdUsuario(Long idEval, Long idPreg, Long idUsuario);
	
	public List<EvaPregRes> obtenerEvaPregResDadoIdEval(Long idEval);
	
	public List<EvaPregRes> obtenerEvaPregResDadoIdEvalUsuario(Long idEval,Long idUsuario);
}
