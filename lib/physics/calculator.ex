defmodule Physics.Calculator do
  @moduledoc """
  This is the Calculator module. Used for calculating a multitude of different physics properties such as friction, kinetic energy, and hookes law
  """

  @doc """
  Do hookes law equation given k (spring constant) and delta x (displacement)

  Returns result of -kx

  ## Examples

      iex> Physics.Calculator.hookes_law(5, 3)
      "-15N"
  """
  def hookes_law(k, x) do
    return_math((-k * x), "N")
  end

  @doc """
  Do kinetic energy equation given both mass (kg) and velocity (m/s)

  Returns result of 1/2mv^2

  ## Examples
  
      iex> Physics.Calculator.kinetic_energy(3, 5)
      "37.5N"
  """
  def kinetic_energy(m,v) do
    return_math((0.5 * m) * square(v), "J")
  end

  @doc """
  Do potential energy equation given mass (kg) gravity (m/s/s) and height (m)

  Returns result of mgh

  ## Examples
  
    iex> Physics.Calculator.potential_energy(3, 9.8, 5)
    "147.0J"
  """
  def potential_energy(m,g,h) do
    return_math((m*g*h), "J")
  end

  @doc """
  Do friction equation given mass (kg) gravity (m/s/s) and height (m)

  Returns result of mgmu

  ## Examples
  
    iex(25)> Physics.Calculator.friction(3, 9.8, 0.011)    
    "0.3234N"
  """
  def friction(m,g,mu) do
    return_math((m*g*mu), "N")
  end

  defp square(x) do
    x * x
  end

  defp return_math(answer, unit) do
    "#{answer}#{unit}"
  end

  def remove_unit(mathed) do
    {num, _} = Integer.parse(mathed)
    num
  end
end
