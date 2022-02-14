using System.Runtime.CompilerServices;

namespace errors
{
	class errors
	{
		static void Error<T>(T message,
			[CallerFilePath] string file = "",
			[CallerLineNumber] int line = 0)
		{
			System.Console.Error.WriteLine($"{file}:{line}: error: {message}");
		}

		public static void Main(string[] args) {
			Error("Main was not implemented yet");
		}
	}
}
