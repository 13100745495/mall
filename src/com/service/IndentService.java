package com.service;

import java.util.List;

import com.entity.Indent;

public interface IndentService {
	public boolean insertindent(Indent i);
	public List<Indent> selectAllIndent();
}
