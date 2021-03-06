import Foundation

/// The protocol defines an IP stack.
public protocol IPStackProtocol: class {
    /**
     Input a packet into the stack.

     - parameter packet:  The IP packet.
     - parameter version: The version of the IP packet, i.e., AF_INET, AF_INET6.

     - returns: If the stack takes in this packet. If the packet is taken in, then it won't be processed by other IP stacks.
     */
    func inputPacket(packet: NSData, version: NSNumber?) -> Bool

    /// This is called when this stack decided to output some IP packet. This is set automatically when the stack is registered to some interface.
    var outputFunc: (([NSData], [NSNumber]) -> ())! { get set }
}
