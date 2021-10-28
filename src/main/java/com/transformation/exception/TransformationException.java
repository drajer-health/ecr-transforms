/**
 * 
 */
package com.transformation.exception;

/**
 * @author Ravishankar Puttaraju
 *
 */
public class TransformationException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private int errorCode;

	/**
	 * 
	 */
	private String errorMessage;

	public TransformationException(Exception e) {
		super(e);
		this.errorCode = 999;
		this.errorMessage = e.getMessage();
	}

	public int getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
