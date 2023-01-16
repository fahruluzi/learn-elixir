defmodule FreelancerRates do
  @daily 8.0
  @bill_dates 22.0

  def daily_rate(hourly_rate), do: hourly_rate * @daily

  def apply_discount(before_discount, discount), do: before_discount - (discount / 100.0 * before_discount)

  def monthly_rate(hourly_rate, discount), do: trunc(Float.ceil((hourly_rate * @daily * @bill_dates) - ((discount / 100.0) * (hourly_rate * @daily * @bill_dates)), 0))

  def days_in_budget(budget, hourly_rate, discount), do: Float.floor(((discount / 100 * budget + 1) + budget) / (hourly_rate * @daily), 1)
end
