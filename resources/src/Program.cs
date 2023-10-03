//
// References:
//  https://edi.wang/post/2018/9/27/get-app-version-net-core
//

using System.Reflection;

Console.WriteLine();
Console.WriteLine("Hello There...!!!\n");
Console.WriteLine($"I am {Assembly.GetExecutingAssembly().GetName().Name} app...\n");

var assemblyVersion = Assembly.GetEntryAssembly()!.GetName().Version!.ToString();
var fileVersion = Assembly.GetEntryAssembly()!.GetCustomAttribute<AssemblyFileVersionAttribute>()!.Version.ToString();
var informationalVersion = Assembly.GetEntryAssembly()!.GetCustomAttribute<AssemblyInformationalVersionAttribute>()!.InformationalVersion;
Console.WriteLine($"Assembly Version        : {assemblyVersion}");
Console.WriteLine($"File Version            : {fileVersion}");
Console.WriteLine($"Informational Version   : {informationalVersion}");
Console.WriteLine();
Console.WriteLine();
Console.WriteLine("CLI app execution completed...\n");