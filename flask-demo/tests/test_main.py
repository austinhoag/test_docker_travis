from flask import url_for

def test_index(test_client):
	""" Check that "home" is displayed for a GET request 
	to the index page"""
	
	response = test_client.get(url_for('main.base'),
		follow_redirects=True)

	assert b'home' in response.data
