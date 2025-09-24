# Camada Raw

## Dataset

## Colunas e Tipos

| Colunas                           | Tipo                     | Descrição                                                             |
| --------------------------------- | ------------------------ | --------------------------------------------------------------------- |
| Date                              | `date` (YYYY-MM-DD)      | Data da reserva                                                       |
| Time                              | `time` (HH:mm:ss)        | Horário da reserva                                                    |
| Booking ID                        | `string`                 | Identificador único para cada reserva de corrida                      |
| Booking Status                    | `string`(enum)           | Status da reserva                                                     |
| Customer ID                       | `string`                 | Identificador único dos clientes                                      |
| Vehicle Type                      | `string`(enum)           | Tipo de veículo                                                       |
| Pickup Location                   | `string`                 | Local de início da corrida                                            |
| Drop Location                     | `string`                 | Local de destino da corrida                                           |
| Avg VTAT                          | `number` , `null`        | Tempo médio para o motorista chegar ao local de embarque (em minutos) |
| Avg CTAT                          | `number` \| `null`       | Duração média da viagem do embarque até o destino (em minutos)        |
| Cancelled Rides by Customer       | `boolean` \| `null`      | Flag de cancelamento iniciado pelo cliente                            |
| Reason for cancelling by Customer | `string` \| `null`       | Motivo do cancelamento pelo cliente                                   |
| Cancelled Rides by Driver         | `boolean` \| `null`      | Flag de cancelamento iniciado pelo motorista                          |
| Driver Cancellation Reason        | `string` \| `null`       | Motivo do cancelamento pelo motorista                                 |
| Incomplete Rides                  | `boolean` \| `null`      | Flag de corrida incompleta                                            |
| Incomplete Rides Reason           | `string` \| `null`       | Motivo da corrida incompleta                                          |
| Booking Value                     | `number` \| `null`       | Valor total da corrida                                                |
| Ride Distance                     | `number` \| `null`       | Distância percorrida durante a corrida (em km)                        |
| Driver Ratings                    | `number` (1–5) \| `null` | Avaliação dada ao motorista (escala de 1 a 5)                         |
| Customer Rating                   | `number` (1–5) \| `null` | Avaliação dada pelo cliente (escala de 1 a 5)                         |
| Payment Method                    | `string`(enum) \| `null` | Método de pagamento utilizado                                         |

## Campos Enum

- **Booking Status**:
  - `Completed`
  - `Cancelled by Customer`
  - `Cancelled by Driver`
  - `No Driver Found`
  - `Incomplete`
- **Vehicle Type**:
  - `Go Mini`
  - `Go Sedan`
  - `Auto`
  - `eBike`
  - `Bike`
  - `UberXL`
  - `Premier Sedan`
- **Payment Method**:
  - `UPI`
  - `Cash`
  - `Credit Card`
  - `Uber Wallet`
  - `Debit Card`

## Fonte dos Dados

Dados utilizados neste trabalho:

- [Uber Data Analytics Dashboard](https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard) – disponível na plataforma Kaggle.
