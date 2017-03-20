import React, { Component, PropTypes } from 'react';
import { TECH_KEYWORD } from 'constants';
import Wrapper from './Wrapper';
import Icon from './Icon';
import FaClose from 'react-icons/lib/fa/close';

const propTypes = {
  name: PropTypes.string.isRequired,
  value: PropTypes.string.isRequired,
  handleReset: PropTypes.func.isRequired,
  handleResetTechKeyword: PropTypes.func.isRequired
};

class CurrentFilterItem extends Component {
  constructor(props) {
    super(props);
    this.handleReset = this.handleReset.bind(this);
  }

  handleReset() {
    const {
      name,
      value,
      handleReset,
      handleResetTechKeyword
    } = this.props;
    if (name === TECH_KEYWORD) return handleResetTechKeyword(name, value);
    handleReset(name);
  }

  render() {
    const { value } = this.props;
    return (
      <Wrapper>
        <span>{value}</span>
        <Icon onClick={this.handleReset} ><FaClose /></Icon>
      </Wrapper>
    )
  }

}

CurrentFilterItem.propTypes = propTypes;
export default CurrentFilterItem;