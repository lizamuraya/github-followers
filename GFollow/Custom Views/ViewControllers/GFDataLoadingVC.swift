import UIKit

class GFDataLoadingVC: UIViewController {

    var containerView: UIView!

    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let avtivityIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(avtivityIndicator)
        
        avtivityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avtivityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            avtivityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        avtivityIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
