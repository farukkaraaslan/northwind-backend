using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Utilities.Results;

public class Result : IResult
{
    //get readonlydir
    // readonly constructorda set edeilebilir
    public Result( string message)
    {
        Message= message;
    }  
    public Result(bool succes)
    {
        Success= succes;
    }

    public bool Success { get; }

    public string Message { get; }
}
