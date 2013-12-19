#include "../../Include/en/System.h"

namespace kge
{
namespace en
{
	//------------------------------------------------------------------------------------
	// Constructor
	//------------------------------------------------------------------------------------
	System::System()
	{

	} // Constructor

	//------------------------------------------------------------------------------------
	// Destructor
	//------------------------------------------------------------------------------------
	System::~System()
	{

	} // Destructor

	//------------------------------------------------------------------------------------
	// Adds an entity to system
	//------------------------------------------------------------------------------------
	void System::AddEntity( Entity* pEn )
	{
		m_vEntities.push_back(pEn);

	} // AddEntity

} // en

} // kge
