package co.edu.usbcali.mathusb.dataaccess.dao;

import co.edu.usbcali.mathusb.dataaccess.api.HibernateDaoImpl;
import co.edu.usbcali.mathusb.modelo.Respuesta;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.hibernate.criterion.Example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;


/**
 * A data access object (DAO) providing persistence and search support for
 * Respuesta entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 *
 * @see lidis.Respuesta
 */
@Scope("singleton")
@Repository("RespuestaDAO")
public class RespuestaDAO extends HibernateDaoImpl<Respuesta, Long>
    implements IRespuestaDAO {
    private static final Logger log = LoggerFactory.getLogger(RespuestaDAO.class);
    @Resource
    private SessionFactory sessionFactory;

    public static IRespuestaDAO getFromApplicationContext(
        ApplicationContext ctx) {
        return (IRespuestaDAO) ctx.getBean("RespuestaDAO");
    }
    
    @Override
	public Long getConsecutivo() {  Long consecutivo = null;
    List qlist = null;
    try {
        
        Query query = sessionFactory.getCurrentSession().getNamedQuery("RESPUESTA_RESP_ID_SEQ");
        qlist = query.list();
        for (java.util.Iterator iter = qlist.iterator(); iter.hasNext();) {
            consecutivo = (Long) iter.next();
        }
    } catch (org.hibernate.HibernateException e) {
        consecutivo = new Long(0);
    }
    return consecutivo;
    }
}
