import Flutter
import UIKit

public class SwiftIdentifierPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "identifier", binaryMessenger: registrar.messenger())
    let instance = SwiftIdentifierPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let device = UIDevice.current;
    result(device.identifierForVendor?.uuidString);
  }
}
