package country

import "testing"

func TestSay_USA(t *testing.T) {
	expected := "Hello, USA"
	actual := Say_USA()
	if actual != expected{
		t.Error("Test failed")
	}

}

func TestSay_Canada(t *testing.T) {
	expected := "Hello, Canada"
	actual := Say_Canada()
	if actual != expected{
		t.Error("Test failed")
	}

}
