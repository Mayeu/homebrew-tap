class Borgmatic < Formula
  include Language::Python::Virtualenv

  desc "A wrapper script for Borg backup software that creates and prunes backups"
  homepage "https://torsion.org/borgmatic/"
  version "1.2.14"
  url "https://files.pythonhosted.org/packages/59/ef/ef05152469a0e8940f6adca5ebdc34194c7e48e03077ecfb0bdd0f8834ef/borgmatic-1.2.14.tar.gz"
  sha256 "1a6ad21e2db8cce7a1191e6a911120c516eba4721e584389df751583974c1e65"

  depends_on "libyaml"
  depends_on "python"

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "pykwalify" do
    url "https://files.pythonhosted.org/packages/53/6a/c7394df238816085de6a630f1817805639e844ea7980108f19261cd44c12/pykwalify-1.7.0.tar.gz"
    sha256 "7e8b39c5a3a10bc176682b3bd9a7422c39ca247482df198b402e8015defcceb2"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/0e/01/68747933e8d12263d41ce08119620d9a7e5eb72c876a3442257f74490da0/python-dateutil-2.7.5.tar.gz"
    sha256 "88f9287c0174266bb0d8cedd395cfba9c58e87e5ad86b2ce58859bc11be3cf02"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/9e/a3/1d13970c3f36777c583f136c136f804d70f500168edc1edea6daa7200769/PyYAML-3.13.tar.gz"
    sha256 "3ef3092145e9b70e3ddd2c7ad59bdd0252a94dfe3949721633e41344de00a6bf"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/95/be/1a63cdb6053aeed8a6de1bcbca02c54e7746383fbe0facfb798e69a66d67/ruamel.yaml-0.15.87.tar.gz"
    sha256 "a736ab1d8c2d5566254a1a2ee38e7c5460520bcccd4a8f0feb25a4463735e5a7"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  def install
    virtualenv_install_with_resources
  end
end
