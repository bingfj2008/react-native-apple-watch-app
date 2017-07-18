/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  TextInput,
  TouchableOpacity,
  NativeModules,
} from 'react-native';

const IWatchConnectModule = NativeModules.IWatchConnectModule;

export default class AppleWatchApp extends Component {

    constructor(props) {
        super(props);
        this.state = {
            value: "",
            result: "",
        }
    }

    callModule() {
        IWatchConnectModule.callbackMethod(
            (result) => {
                alert(JSON.stringify(result));
            }
        );
    }

    render() {
        return (
        <View style={styles.container}>
            <TextInput 
                value={this.state.value}
                style={styles.inputArea} 
                multiline={true}
                onChangeText={(text) => {
                    this.setState(
                        {
                            value: text,
                            result: text,
                        })
                    }
                }
            />
            <TouchableOpacity style={styles.button} onPress={() => {this.callModule()}}>
                <Text style={{color: "white"}}>Call</Text>
            </TouchableOpacity>
        </View>
        );
    }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  inputArea: {
    width: 300,
    height: 100,
    borderColor: "#000000",
    borderWidth: 1,
    marginBottom: 20,
  },
  button: {
    width: 50,
    height: 30,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'blue',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('AppleWatchApp', () => AppleWatchApp);
