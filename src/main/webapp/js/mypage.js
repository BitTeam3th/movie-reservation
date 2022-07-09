mypageContent = ``;

mypageContent +=
`
<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><input type="radio" id=<%=i%>
					value=<%=list.get(i).getReservationId()%> name="movie"></td>
				<td><img alt="" src="<%=list.get(i).getMovieImg()%>" width=300
					height=400></td>
				<td><%=list.get(i).getMovieTitle()%></td>
				<td><%=list.get(i).getMovieTime()%></td>
			</tr>
			<%
			}
			%>
`

document.getElementById('mypageTable').innerHTML = mypageContent;