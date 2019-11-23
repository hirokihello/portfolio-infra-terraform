resource "aws_route53_zone" "hirokihello_portfolio_public" {
  name = "hirokihello.xyz"
}

resource "aws_route53_record" "hirokihello_portfolio_routing" {
  zone_id = "${aws_route53_zone.hirokihello_portfolio_public.zone_id}"
  name = "hirokihello.xyz"
  type = "A"

  alias {
    name = "${aws_cloudfront_distribution.s3_distribution.domain_name}"
    zone_id = "${aws_cloudfront_distribution.s3_distribution.hosted_zone_id}"
    evaluate_target_health = false
  }
}
