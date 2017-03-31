package UseCases.ProcessShoppingOrder;

// -----( IS Java Code Template v1.2
// -----( CREATED: 2016-11-09 22:27:41 GMT
// -----( ON-HOST: MCLLOJA03.eur.ad.sag

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.lang.CharSequence;
// --- <<IS-END-IMPORTS>> ---

public final class Utils

{
	// ---( internal utility methods )---

	final static Utils _instance = new Utils();

	static Utils _newInstance() { return new Utils(); }

	static Utils _cast(Object o) { return (Utils)o; }

	// ---( server methods )---




	public static final void arrangeLineItems (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(arrangeLineItems)>> ---
		// @sigtype java 3.5
		IDataCursor idcPipeline = pipeline.getCursor();
		
		int i = 0;
		while ( idcPipeline.next() )
		{
			String key = idcPipeline.getKey();
			if(key.contains("ItemId"))
				++i;
		}
		
		IData[] documentListOut = new IData[i];
		
		for (int j = 0; j < i; ++j) {
			documentListOut[j] = IDataFactory.create();
		}
		
		for (int j = 0; j < i; ++j) {
			idcPipeline.home();
			IDataCursor idcDocumentListOut = documentListOut[j].getCursor();
			while ( idcPipeline.next() )
			{
				String key = idcPipeline.getKey();
				if(key.contains("ItemId"+Integer.toString(j+1))) {
					String value = IDataUtil.getString( idcPipeline );
					IDataUtil.put(idcDocumentListOut, "ItemId", value);
				}
				if(key.contains("ItemName"+Integer.toString(j+1))) {
					String value = IDataUtil.getString( idcPipeline );
					IDataUtil.put(idcDocumentListOut, "ItemName", value);
				}
				if(key.contains("Description"+Integer.toString(j+1))) {
					String value = IDataUtil.getString( idcPipeline );
					IDataUtil.put(idcDocumentListOut, "Description", value);
				}
				if(key.contains("Quantity"+Integer.toString(j+1))) {
					String value = IDataUtil.getString( idcPipeline );
					IDataUtil.put(idcDocumentListOut, "Quantity", value);
				}
				if(key.contains("Price"+Integer.toString(j+1))) {
					String value = IDataUtil.getString( idcPipeline );
					IDataUtil.put(idcDocumentListOut, "Price", value);
				}
			}
			idcDocumentListOut.destroy();
		}
		IDataUtil.put(idcPipeline, "LineItems", documentListOut);
		idcPipeline.destroy();
		// --- <<IS-END>> ---

                
	}
}

