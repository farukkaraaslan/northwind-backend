using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Core.DataAccess;

//generic constraint

public interface IEntityRepository<TEntity> where TEntity:class, IEntity,new()
    //class referans tip olmak zorunda,
    //IEntity olabilir veya IEntityi implemente eden clas olabilir,
    //Verilen TEntity newlenebilir olmalı
{
    List<TEntity> GetAll(Expression<Func<TEntity,bool>> filter= null);
    // Filter da vermeyebilir.Buda herhangi bir tablo alanına göre tüm verileri listelemek için kullanılır

    //TODO:Expression methodlara bak
    TEntity Get(Expression<Func<TEntity, bool>> filter );//Filter vermek zorunda
    void Add(TEntity entity);
    void Update(TEntity entity);
    void Delete(TEntity entity);
}
