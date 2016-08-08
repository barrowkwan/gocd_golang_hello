package country

import "testing"

func TestSay_USA(t *testing.T) {
	expected := "Hello, USA"
	actual := Say_USA()
	if actual != expected{
		t.Error("Test failed")
	}

}
