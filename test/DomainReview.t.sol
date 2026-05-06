// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/DomainReview.sol";

contract DomainReviewTest {
    function testDomainReviewLane() public {
        DomainReview lens = new DomainReview();
        DomainReview.Item memory item = DomainReview.Item(53, 36, 22, 63);
        require(lens.score(item) == 139, "domain score mismatch");
        require(lens.lane(item) == 1, "domain lane mismatch");
    }
}
