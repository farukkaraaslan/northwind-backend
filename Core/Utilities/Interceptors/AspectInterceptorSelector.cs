using Castle.DynamicProxy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Core.Utilities.Interceptors;
// hangi aspectin ilk olarak çalıştırılacagını belirleyen class
public class AspectInterceptorSelector : IInterceptorSelector
{
    public IInterceptor[] SelectInterceptors(Type type, MethodInfo method, IInterceptor[] interceptors)
    {
        var classAttributes = type.GetCustomAttributes<MethodInterceptionBaseAttribute>
            (true).ToList();
        var methodAttributes = type.GetMethod(method.Name)
            .GetCustomAttributes<MethodInterceptionBaseAttribute>(true);
        classAttributes.AddRange(methodAttributes);
        // loglama alt yapsı yazıldıgında uygulamadaki tüm mehodlar ve yeni yazılacak methodlar loglamaya dahil edilir.
        //classAttributes.Add(new ExceptionLogAspect(typeof(FileLogger))); 

        return classAttributes.OrderBy(x => x.Priority).ToArray();
    }
}
