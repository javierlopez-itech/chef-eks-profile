title "EKS Compliance"

# you add controls here
control "eks-vesion" do
  impact 0.7
  title "EKS is running on a supported version"
  describe aws_eks_cluster(input('cluster_name')) do                  # The actual test
    it { should exist }
    its('version') { should cmp > 1.19 }
  end
end
