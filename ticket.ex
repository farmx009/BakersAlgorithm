defmodule Ticket do
	servers = []
	customers = []

	@doc """ Adds a new free server to the free server list. """
	def addServer(s) do
		List.insert_at(servers, 0, s)
	end
	
	@doc """ Adds a new customer that needs to be helped. """
	def addCustomer(c) do
		List.insert_at(customers, 0, c)
	end
	
	@doc """ Pairs a customer with a server. """
	def pair(c, s) do
		
	end
	
	@doc """ Computes fib. """
	def fib(n) do
		fib(n-1) + fib(n-2)
	end
	
	@doc """ Manager that receives messages to do certain actions. """
	def manager do
		receive do
			{:add_customer, msg} -> addCustomer(msg)
			{:add_free_server, msg} -> addServer(msg)
		after
			1_000 -> "nothing after 1s"
		end
	end
	
	@doc """ Customer that receives messages to do certain actions. """
	def customer do
		receive do
			{:pair_with_server, c, s} -> 
				pair(c, s)
				IO.puts("Server #{s} helping customer #{c}.")
			{:fib_done, c, s} ->
				IO.puts("Server #{s} done serving customer #{c}."
		end
	end
end
