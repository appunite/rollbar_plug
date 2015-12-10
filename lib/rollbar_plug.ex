defmodule RollbarPlug do
  defmacro __using__(_env) do
    quote location: :keep do
      @before_compile RollbarPlug
    end
  end

  defmacro __before_compile__(_env) do
    quote location: :keep do
      defoverridable [call: 2]

      def call(conn, opts) do
        try do
          super(conn, opts)
        rescue
          exception ->
            stacktrace = System.stacktrace
            Rollbax.report(exception, stacktrace)
            reraise exception, stacktrace
        end
      end

    end
  end

end
