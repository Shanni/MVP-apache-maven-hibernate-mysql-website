package Apple.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
//import java.sql.Timestamp;


/**
 * The persistent class for the timestamps database table.
 * 
 */
@Entity
@Table(name="timestamps")
@NamedQuery(name="Timestamp.findAll", query="SELECT t FROM Timestamp t")
public class Timestamp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="create_time")
	private Date createTime;

	@Column(name="update_time")
	private Timestamp updateTime;

	public Timestamp() {
		
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

}