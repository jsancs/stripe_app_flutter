part of 'pagar_bloc.dart';

@immutable
class PagarState {
  final double cantidad;
  final String moneda;
  final bool tarjetaActiva;
  final TarjetaCredito tarjeta;

  String get cantidadPagarString => '${(this.cantidad * 100).floor()}';

  PagarState(
      {this.cantidad = 375.55,
      this.moneda = 'USD',
      this.tarjetaActiva = false,
      this.tarjeta});

  PagarState copyWith({
    double cantidad,
    String moneda,
    bool tarjetaActiva,
    TarjetaCredito tarjeta,
  }) =>
      PagarState(
        cantidad: cantidad ?? this.cantidad,
        moneda: moneda ?? this.moneda,
        tarjetaActiva: tarjetaActiva ?? this.tarjetaActiva,
        tarjeta: tarjeta ?? this.tarjeta,
      );
}
