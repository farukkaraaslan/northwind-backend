using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Core.DataAccess.EntityFramework;

public class EfEntityRepositoryBase<TEntity, TContext> : IEntityRepository<TEntity>
    where TEntity : class, IEntity, new()
    where TContext : DbContext, new()
{
    protected DbContext context;

    public EfEntityRepositoryBase(DbContext context)
    {
        this.context = context;
    }

    public TEntity Get(Expression<Func<TEntity, bool>> filter)
    {
        return context.Set<TEntity>().SingleOrDefault(filter);
    }

    public List<TEntity> GetAll(Expression<Func<TEntity, bool>> filter = null)
    {
        return filter == null
            ? context.Set<TEntity>().ToList()
           : context.Set<TEntity>().Where(filter).ToList();
    }

    public void Add(TEntity entity)
    {
        var addedEntity = context.Entry(entity);
        addedEntity.State = EntityState.Added;
        context.SaveChanges();
    }

    public void Delete(TEntity entity)
    {
        var deletedEntity = context.Entry(entity);
        deletedEntity.State = EntityState.Added;
        context.SaveChanges();
    }

    public void Update(TEntity entity)
    {
        var updatedEntity = context.Entry(entity);
        updatedEntity.State = EntityState.Added;
        context.SaveChanges();
    }
}
