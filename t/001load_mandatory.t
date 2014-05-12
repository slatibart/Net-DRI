#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 436;

BEGIN {
use_ok('Net::DRI');
use_ok('Net::DRI::Transport');
use_ok('Net::DRI::Exception');
use_ok('Net::DRI::Cache');
use_ok('Net::DRI::Protocol');
use_ok('Net::DRI::Util');
use_ok('Net::DRI::Registry');
use_ok('Net::DRI::Shell');
use_ok('Net::DRI::BaseClass');
use_ok('Net::DRI::Logging');
use_ok('Net::DRI::Logging::Null');
use_ok('Net::DRI::Logging::Files');
use_ok('Net::DRI::Logging::Stderr');
use_ok('Net::DRI::DRD');
use_ok('Net::DRI::DRD::ICANN');
use_ok('Net::DRI::DRD::VNDS');
use_ok('Net::DRI::DRD::AFNIC');
use_ok('Net::DRI::DRD::Gandi');
use_ok('Net::DRI::DRD::WS');
use_ok('Net::DRI::DRD::EURid');
use_ok('Net::DRI::DRD::IIS');
use_ok('Net::DRI::DRD::SE');
use_ok('Net::DRI::DRD::PL');
use_ok('Net::DRI::DRD::IENUMAT');
use_ok('Net::DRI::DRD::CAT');
use_ok('Net::DRI::DRD::AERO');
use_ok('Net::DRI::DRD::MOBI');
use_ok('Net::DRI::DRD::BE');
use_ok('Net::DRI::DRD::AT');
use_ok('Net::DRI::DRD::COOP');
use_ok('Net::DRI::DRD::INFO');
use_ok('Net::DRI::DRD::ORG');
use_ok('Net::DRI::DRD::LU');
use_ok('Net::DRI::DRD::BIZ');
use_ok('Net::DRI::DRD::ASIA');
use_ok('Net::DRI::DRD::NAME');
use_ok('Net::DRI::DRD::NU');
use_ok('Net::DRI::DRD::AU');
use_ok('Net::DRI::DRD::US');
use_ok('Net::DRI::DRD::OVH');
use_ok('Net::DRI::DRD::BookMyName');
use_ok('Net::DRI::DRD::Nominet');
use_ok('Net::DRI::DRD::DENIC');
use_ok('Net::DRI::DRD::SWITCH');
use_ok('Net::DRI::DRD::HN');
use_ok('Net::DRI::DRD::SC');
use_ok('Net::DRI::DRD::VC');
use_ok('Net::DRI::DRD::AG');
use_ok('Net::DRI::DRD::BZ');
use_ok('Net::DRI::DRD::LC');
use_ok('Net::DRI::DRD::MN');
use_ok('Net::DRI::DRD::ME');
use_ok('Net::DRI::DRD::CZ');
use_ok('Net::DRI::DRD::TRAVEL');
use_ok('Net::DRI::DRD::NO');
use_ok('Net::DRI::DRD::BR');
use_ok('Net::DRI::DRD::PRO');
use_ok('Net::DRI::DRD::OpenSRS');
use_ok('Net::DRI::DRD::PT');
use_ok('Net::DRI::DRD::CentralNic');
use_ok('Net::DRI::DRD::CoCCA');
use_ok('Net::DRI::DRD::ARNES');
use_ok('Net::DRI::DRD::IM');
use_ok('Net::DRI::DRD::AdamsNames');
use_ok('Net::DRI::DRD::SIDN');
use_ok('Net::DRI::DRD::IT');
use_ok('Net::DRI::DRD::IRegistry');
use_ok('Net::DRI::DRD::CIRA');
use_ok('Net::DRI::DRD::GL');
use_ok('Net::DRI::DRD::ISPAPI');
use_ok('Net::DRI::DRD::BH');
use_ok('Net::DRI::DRD::COZA');
use_ok('Net::DRI::DRD::TCI');
use_ok('Net::DRI::DRD::SO');
use_ok('Net::DRI::DRD::ID');
use_ok('Net::DRI::DRD::UPU');
use_ok('Net::DRI::DRD::ICMRegistry');
use_ok('Net::DRI::DRD::Telnic');
use_ok('Net::DRI::DRD::AFNIC_GTLD');
use_ok('Net::DRI::DRD::ARI');
use_ok('Net::DRI::DRD::CORENIC');
use_ok('Net::DRI::DRD::TANGO');
use_ok('Net::DRI::DRD::Deloitte');
use_ok('Net::DRI::DRD::DONUTS');
use_ok('Net::DRI::DRD::ES');
use_ok('Net::DRI::DRD::MAM');
use_ok('Net::DRI::DRD::NEUSTAR');
use_ok('Net::DRI::DRD::TMDB');
use_ok('Net::DRI::DRD::UNIREG');
use_ok('Net::DRI::DRD::UNITEDTLD');
use_ok('Net::DRI::DRD::ZACR');
use_ok('Net::DRI::DRD::AfiliasSRS');
use_ok('Net::DRI::DRD::GMO');
use_ok('Net::DRI::DRD::CRR');
use_ok('Net::DRI::DRD::NGTLD');
use_ok('Net::DRI::Data::Raw');
use_ok('Net::DRI::Data::Hosts');
use_ok('Net::DRI::Data::Changes');
use_ok('Net::DRI::Data::StatusList');
use_ok('Net::DRI::Data::RegistryObject');
use_ok('Net::DRI::Data::IDN');
use_ok('Net::DRI::Data::Contact');
use_ok('Net::DRI::Data::ContactSet');
use_ok('Net::DRI::Data::Contact::EURid');
use_ok('Net::DRI::Data::Contact::IIS');
use_ok('Net::DRI::Data::Contact::SE');
use_ok('Net::DRI::Data::Contact::PL');
use_ok('Net::DRI::Data::Contact::AFNIC');
use_ok('Net::DRI::Data::Contact::US');
use_ok('Net::DRI::Data::Contact::CAT');
use_ok('Net::DRI::Data::Contact::AERO');
use_ok('Net::DRI::Data::Contact::BE');
use_ok('Net::DRI::Data::Contact::AT');
use_ok('Net::DRI::Data::Contact::COOP');
use_ok('Net::DRI::Data::Contact::LU');
use_ok('Net::DRI::Data::Contact::ASIA');
use_ok('Net::DRI::Data::Contact::Nominet');
use_ok('Net::DRI::Data::Contact::NYC');
use_ok('Net::DRI::Data::Contact::DENIC');
use_ok('Net::DRI::Data::Contact::SWITCH');
use_ok('Net::DRI::Data::Contact::NO');
use_ok('Net::DRI::Data::Contact::BR');
use_ok('Net::DRI::Data::Contact::JOBS');
use_ok('Net::DRI::Data::Contact::FCCN');
use_ok('Net::DRI::Data::Contact::ARNES');
use_ok('Net::DRI::Data::Contact::OpenSRS');
use_ok('Net::DRI::Data::Contact::SIDN');
use_ok('Net::DRI::Data::Contact::CIRA');
use_ok('Net::DRI::Data::Contact::IT');
use_ok('Net::DRI::Data::Contact::COZA');
use_ok('Net::DRI::Data::Contact::TCI');
use_ok('Net::DRI::Data::Contact::ES');
use_ok('Net::DRI::Data::Contact::UNIREG');
use_ok('Net::DRI::Transport::Socket');
use_ok('Net::DRI::Transport::Dummy');
use_ok('Net::DRI::Transport::Defer');
use_ok('Net::DRI::Protocol::ResultStatus');
use_ok('Net::DRI::Protocol::Message');
use_ok('Net::DRI::Protocol::RRP::Message');
use_ok('Net::DRI::Protocol::RRP::Core::Domain');
use_ok('Net::DRI::Protocol::RRP::Core::Host');
use_ok('Net::DRI::Protocol::RRP::Core::Status');
use_ok('Net::DRI::Protocol::RRP::Core::Session');
use_ok('Net::DRI::Protocol::RRP::Connection');
use_ok('Net::DRI::Protocol::RRP');
use_ok('Net::DRI::Protocol::AFNIC::WS::Domain');
use_ok('Net::DRI::Protocol::AFNIC::WS::Message');
use_ok('Net::DRI::Protocol::AFNIC::WS');
use_ok('Net::DRI::Protocol::AFNIC::Email::Domain');
use_ok('Net::DRI::Protocol::EPP');
use_ok('Net::DRI::Protocol::EPP::Message');
use_ok('Net::DRI::Protocol::EPP::Connection');
use_ok('Net::DRI::Protocol::EPP::Util');
use_ok('Net::DRI::Protocol::EPP::Core::Status');
use_ok('Net::DRI::Protocol::EPP::Core::Contact');
use_ok('Net::DRI::Protocol::EPP::Core::Domain');
use_ok('Net::DRI::Protocol::EPP::Core::Host');
use_ok('Net::DRI::Protocol::EPP::Core::Session');
use_ok('Net::DRI::Protocol::EPP::Core::RegistryMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::GracePeriod');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164');
use_ok('Net::DRI::Protocol::EPP::Extensions::SecDNS');
use_ok('Net::DRI::Protocol::EPP::Extensions::NSgroup');
use_ok('Net::DRI::Protocol::EPP::Extensions::Keygroup');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Sunrise');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::EURid::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::IIS');
use_ok('Net::DRI::Protocol::EPP::Extensions::IIS::Extensions');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::PL::Report');
use_ok('Net::DRI::Protocol::EPP::Extensions::US');
use_ok('Net::DRI::Protocol::EPP::Extensions::US::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Sync');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::WhoisInfo');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::NameStore');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PollLowBalance');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PollRGP');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::JobsContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::WhoWas');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::PremiumDomain');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Suggestion');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::ClientAttributes');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::TwoFactorAuth');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::ZoneManagement');
use_ok('Net::DRI::Protocol::EPP::Extensions::VeriSign::Balance');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Result');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::IOptions');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::IENUMAT');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CAT::DefensiveRegistration');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AERO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::MOBI');
use_ok('Net::DRI::Protocol::EPP::Extensions::MOBI::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::DNSBE::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AT::ATResult');
use_ok('Net::DRI::Protocol::EPP::Extensions::COOP');
use_ok('Net::DRI::Protocol::EPP::Extensions::COOP::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Poll');
use_ok('Net::DRI::Protocol::EPP::Extensions::LU::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic');
use_ok('Net::DRI::Protocol::EPP::Extensions::CentralNic::Fee');
use_ok('Net::DRI::Protocol::EPP::Extensions::ASIA');
use_ok('Net::DRI::Protocol::EPP::Extensions::ASIA::CED');
use_ok('Net::DRI::Protocol::EPP::Extensions::ASIA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AU');
use_ok('Net::DRI::Protocol::EPP::Extensions::AU::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164Validation');
use_ok('Net::DRI::Protocol::EPP::Extensions::E164Validation::RFC5076');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias');
use_ok('Net::DRI::Protocol::EPP::Extensions::AfiliasSRS');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Restore');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::IPR');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::MaintainerUrl');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Trademark');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Association');
use_ok('Net::DRI::Protocol::EPP::Extensions::Afilias::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::NAME');
use_ok('Net::DRI::Protocol::EPP::Extensions::NAME::EmailFwd');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::Nominet::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::SWITCH');
use_ok('Net::DRI::Protocol::EPP::Extensions::CZ');
use_ok('Net::DRI::Protocol::EPP::Extensions::CZ::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CZ::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CZ::NSSET');
use_ok('Net::DRI::Protocol::EPP::Extensions::NEUSTAR');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::Fee');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::UIN');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::IDNLanguage');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::WhoisType');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::NeuLevel::EXTContact');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::NO::Result');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Status');
use_ok('Net::DRI::Protocol::EPP::Extensions::AFNIC::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::BR::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::PRO');
use_ok('Net::DRI::Protocol::EPP::Extensions::PRO::AV');
use_ok('Net::DRI::Protocol::EPP::Extensions::PRO::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::FCCN::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARNES::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::IRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::SIDN::Host');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Notifications');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::CIRA::Agreement');
use_ok('Net::DRI::Protocol::EPP::Extensions::ME');
use_ok('Net::DRI::Protocol::EPP::Extensions::ISPAPI');
use_ok('Net::DRI::Protocol::EPP::Extensions::ISPAPI::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::GL');
use_ok('Net::DRI::Protocol::EPP::Extensions::COZA');
use_ok('Net::DRI::Protocol::EPP::Extensions::COZA::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::COZA::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::CoCCA::IPVerification');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::TCI::Registrar');
use_ok('Net::DRI::Protocol::EPP::Extensions::CloudRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::CloudRegistry::LaunchPhase');
use_ok('Net::DRI::Protocol::EPP::Extensions::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::AusRegistry::Variant');
use_ok('Net::DRI::Protocol::EPP::Extensions::ICMRegistry');
use_ok('Net::DRI::Protocol::EPP::Extensions::Telnic');
use_ok('Net::DRI::Protocol::EPP::Extensions::KeyRelay');
use_ok('Net::DRI::Protocol::EPP::Extensions::BIZ');
use_ok('Net::DRI::Protocol::EPP::Extensions::ICANN::MarkSignedMark');
use_ok('Net::DRI::Protocol::EPP::Extensions::LaunchPhase');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::ExAvail');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::IDNVariant');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::KeyValue');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::Price');
use_ok('Net::DRI::Protocol::EPP::Extensions::ARI::TMCHApplication');
use_ok('Net::DRI::Protocol::EPP::Extensions::CORENIC');
use_ok('Net::DRI::Protocol::EPP::Extensions::TANGO');
use_ok('Net::DRI::Protocol::EPP::Extensions::TANGO::Auction');
use_ok('Net::DRI::Protocol::EPP::Extensions::TANGO::IDN');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Contact');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Domain');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Session');
use_ok('Net::DRI::Protocol::EPP::Extensions::ES::Tray');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT');
use_ok('Net::DRI::Protocol::EPP::Extensions::IT::Message');
use_ok('Net::DRI::Protocol::EPP::Extensions::NEWGTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNIREG');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNIREG::Centric');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNIREG::RegistryMessage');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNITEDTLD');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNITEDTLD::Charge');
use_ok('Net::DRI::Protocol::EPP::Extensions::UNITEDTLD::Finance');
use_ok('Net::DRI::Protocol::EPP::Extensions::ZACR');
use_ok('Net::DRI::Protocol::DAS');
use_ok('Net::DRI::Protocol::DAS::Message');
use_ok('Net::DRI::Protocol::DAS::Connection');
use_ok('Net::DRI::Protocol::DAS::Domain');
use_ok('Net::DRI::Protocol::DAS::AU');
use_ok('Net::DRI::Protocol::DAS::AU::Message');
use_ok('Net::DRI::Protocol::DAS::AU::Connection');
use_ok('Net::DRI::Protocol::DAS::AU::Domain');
use_ok('Net::DRI::Protocol::DAS::AdamsNames');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Message');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Connection');
use_ok('Net::DRI::Protocol::DAS::AdamsNames::Domain');
use_ok('Net::DRI::Protocol::DAS::SIDN');
use_ok('Net::DRI::Protocol::DAS::SIDN::Message');
use_ok('Net::DRI::Protocol::DAS::SIDN::Connection');
use_ok('Net::DRI::Protocol::DAS::SIDN::Domain');
use_ok('Net::DRI::Protocol::Whois');
use_ok('Net::DRI::Protocol::Whois::Message');
use_ok('Net::DRI::Protocol::Whois::Connection');
use_ok('Net::DRI::Protocol::Whois::Domain::common');
use_ok('Net::DRI::Protocol::Whois::Domain::COM');
use_ok('Net::DRI::Protocol::Whois::Domain::ORG');
use_ok('Net::DRI::Protocol::Whois::Domain::AERO');
use_ok('Net::DRI::Protocol::Whois::Domain::INFO');
use_ok('Net::DRI::Protocol::Whois::Domain::EU');
use_ok('Net::DRI::Protocol::Whois::Domain::BIZ');
use_ok('Net::DRI::Protocol::Whois::Domain::MOBI');
use_ok('Net::DRI::Protocol::Whois::Domain::NAME');
use_ok('Net::DRI::Protocol::Whois::Domain::LU');
use_ok('Net::DRI::Protocol::Whois::Domain::WS');
use_ok('Net::DRI::Protocol::Whois::Domain::SE');
use_ok('Net::DRI::Protocol::Whois::Domain::CAT');
use_ok('Net::DRI::Protocol::Whois::Domain::AT');
use_ok('Net::DRI::Protocol::Whois::Domain::TRAVEL');
use_ok('Net::DRI::Protocol::Whois::Domain::PT');
use_ok('Net::DRI::Protocol::OVH::WS');
use_ok('Net::DRI::Protocol::OVH::WS::Connection');
use_ok('Net::DRI::Protocol::OVH::WS::Message');
use_ok('Net::DRI::Protocol::OVH::WS::Account');
use_ok('Net::DRI::Protocol::OVH::WS::Domain');
use_ok('Net::DRI::Protocol::BookMyName::WS');
use_ok('Net::DRI::Protocol::BookMyName::WS::Message');
use_ok('Net::DRI::Protocol::BookMyName::WS::Account');
use_ok('Net::DRI::Protocol::BookMyName::WS::Domain');
use_ok('Net::DRI::Protocol::Gandi::WS');
use_ok('Net::DRI::Protocol::Gandi::WS::Message');
use_ok('Net::DRI::Protocol::Gandi::WS::Account');
use_ok('Net::DRI::Protocol::Gandi::WS::Domain');
use_ok('Net::DRI::Protocol::RRI');
use_ok('Net::DRI::Protocol::RRI::Connection');
use_ok('Net::DRI::Protocol::RRI::Contact');
use_ok('Net::DRI::Protocol::RRI::Message');
use_ok('Net::DRI::Protocol::RRI::Session');
use_ok('Net::DRI::Protocol::RRI::Domain');
use_ok('Net::DRI::Protocol::RRI::RegistryMessage');
use_ok('Net::DRI::Protocol::OpenSRS::XCP');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Account');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Domain');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Session');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Message');
use_ok('Net::DRI::Protocol::OpenSRS::XCP::Host');
use_ok('Net::DRI::Protocol::IRIS');
use_ok('Net::DRI::Protocol::IRIS::Message');
use_ok('Net::DRI::Protocol::IRIS::Core');
use_ok('Net::DRI::Protocol::IRIS::DCHK::Domain');
use_ok('Net::DRI::Protocol::IRIS::DCHK::Status');
use_ok('Net::DRI::Protocol::IRIS::XCP');
use_ok('Net::DRI::Protocol::AdamsNames::WS');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Connection');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Message');
use_ok('Net::DRI::Protocol::AdamsNames::WS::Domain');
use_ok('Net::DRI::Protocol::TMCH');
use_ok('Net::DRI::Protocol::TMCH::Connection');
use_ok('Net::DRI::Protocol::TMCH::Core::Mark');
use_ok('Net::DRI::Protocol::TMCH::Core::RegistryMessage');
use_ok('Net::DRI::Protocol::TMCH::Core::Session');
use_ok('Net::DRI::Protocol::TMCH::Message');
use_ok('Net::DRI::Protocol::TMDB');
use_ok('Net::DRI::Protocol::TMDB::Commands');
use_ok('Net::DRI::Protocol::TMDB::Connection');
use_ok('Net::DRI::Protocol::TMDB::Message');
}

exit 0;
