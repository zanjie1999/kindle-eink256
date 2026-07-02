.class Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;
.source "RegionDefaults.java"


# direct methods
.method public static getRegions()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v2, "amazonaws.com"

    const-string v3, "ap-northeast-1"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "autoscaling.ap-northeast-1.amazonaws.com"

    .line 30
    invoke-static {v1, v3, v6, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-identity"

    const-string v7, "cognito-identity.ap-northeast-1.amazonaws.com"

    .line 31
    invoke-static {v1, v6, v7, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "cognito-idp"

    const-string v8, "cognito-idp.ap-northeast-1.amazonaws.com"

    .line 33
    invoke-static {v1, v7, v8, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "cognito-sync"

    const-string v9, "cognito-sync.ap-northeast-1.amazonaws.com"

    .line 34
    invoke-static {v1, v8, v9, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "data.iot"

    const-string v10, "data.iot.ap-northeast-1.amazonaws.com"

    .line 36
    invoke-static {v1, v9, v10, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "dynamodb"

    const-string v11, "dynamodb.ap-northeast-1.amazonaws.com"

    .line 37
    invoke-static {v1, v10, v11, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v11, "ec2"

    const-string v12, "ec2.ap-northeast-1.amazonaws.com"

    .line 38
    invoke-static {v1, v11, v12, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "elasticloadbalancing"

    const-string v13, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    .line 39
    invoke-static {v1, v12, v13, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v13, "firehose"

    const-string v14, "firehose.ap-northeast-1.amazonaws.com"

    .line 41
    invoke-static {v1, v13, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v13, "iot"

    const-string v14, "iot.ap-northeast-1.amazonaws.com"

    .line 42
    invoke-static {v1, v13, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "kinesis"

    const-string v15, "kinesis.ap-northeast-1.amazonaws.com"

    .line 43
    invoke-static {v1, v14, v15, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v15, "kms"

    move-object/from16 v16, v14

    const-string v14, "kms.ap-northeast-1.amazonaws.com"

    .line 44
    invoke-static {v1, v15, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "lambda"

    move-object/from16 v17, v15

    const-string v15, "lambda.ap-northeast-1.amazonaws.com"

    .line 45
    invoke-static {v1, v14, v15, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v15, "logs"

    move-object/from16 v18, v14

    const-string v14, "logs.ap-northeast-1.amazonaws.com"

    .line 46
    invoke-static {v1, v15, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "polly"

    move-object/from16 v19, v15

    const-string v15, "polly.ap-northeast-1.amazonaws.com"

    .line 47
    invoke-static {v1, v14, v15, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v15, "s3"

    move-object/from16 v20, v14

    const-string v14, "s3.ap-northeast-1.amazonaws.com"

    .line 48
    invoke-static {v1, v15, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "sdb"

    move-object/from16 v21, v15

    const-string v15, "sdb.ap-northeast-1.amazonaws.com"

    .line 49
    invoke-static {v1, v14, v15, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "sns"

    const-string v15, "sns.ap-northeast-1.amazonaws.com"

    .line 50
    invoke-static {v1, v14, v15, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v15, "sqs"

    move-object/from16 v22, v14

    const-string v14, "sqs.ap-northeast-1.amazonaws.com"

    .line 51
    invoke-static {v1, v15, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "sts.amazonaws.com"

    move-object/from16 v23, v15

    const-string v15, "sts"

    .line 52
    invoke-static {v1, v15, v14, v5, v4}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 54
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v4, "ap-northeast-2"

    invoke-direct {v1, v4, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.ap-northeast-2.amazonaws.com"

    move-object/from16 v25, v14

    const/4 v14, 0x1

    .line 56
    invoke-static {v1, v3, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.ap-northeast-2.amazonaws.com"

    .line 57
    invoke-static {v1, v6, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.ap-northeast-2.amazonaws.com"

    .line 59
    invoke-static {v1, v7, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.ap-northeast-2.amazonaws.com"

    .line 60
    invoke-static {v1, v8, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.ap-northeast-2.amazonaws.com"

    .line 62
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.ap-northeast-2.amazonaws.com"

    .line 63
    invoke-static {v1, v10, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.ap-northeast-2.amazonaws.com"

    .line 64
    invoke-static {v1, v11, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    .line 65
    invoke-static {v1, v12, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.ap-northeast-2.amazonaws.com"

    .line 67
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.ap-northeast-2.amazonaws.com"

    move-object/from16 v24, v13

    move-object/from16 v13, v16

    .line 68
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.ap-northeast-2.amazonaws.com"

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    .line 69
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v18

    .line 70
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v19

    .line 71
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v20

    .line 72
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v21

    .line 73
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v22

    .line 74
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.ap-northeast-2.amazonaws.com"

    move-object/from16 v9, v23

    .line 75
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sts.ap-northeast-2.amazonaws.com"

    .line 76
    invoke-static {v1, v15, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v4, "ap-south-1"

    invoke-direct {v1, v4, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.ap-south-1.amazonaws.com"

    .line 80
    invoke-static {v1, v3, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.ap-south-1.amazonaws.com"

    .line 81
    invoke-static {v1, v6, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.ap-south-1.amazonaws.com"

    .line 83
    invoke-static {v1, v7, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.ap-south-1.amazonaws.com"

    .line 84
    invoke-static {v1, v8, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.ap-south-1.amazonaws.com"

    .line 85
    invoke-static {v1, v10, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.ap-south-1.amazonaws.com"

    .line 86
    invoke-static {v1, v11, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.ap-south-1.amazonaws.com"

    .line 87
    invoke-static {v1, v12, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.ap-south-1.amazonaws.com"

    .line 89
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.ap-south-1.amazonaws.com"

    move-object/from16 v23, v13

    move-object/from16 v13, v17

    .line 90
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.ap-south-1.amazonaws.com"

    move-object/from16 v13, v18

    .line 91
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.ap-south-1.amazonaws.com"

    move-object/from16 v13, v19

    .line 92
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.ap-south-1.amazonaws.com"

    move-object/from16 v13, v20

    .line 93
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.ap-south-1.amazonaws.com"

    move-object/from16 v13, v21

    .line 94
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.ap-south-1.amazonaws.com"

    move-object/from16 v13, v22

    .line 95
    invoke-static {v1, v13, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.ap-south-1.amazonaws.com"

    .line 96
    invoke-static {v1, v9, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v25

    .line 97
    invoke-static {v1, v15, v4, v5, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 99
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v5, "ap-southeast-1"

    invoke-direct {v1, v5, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "autoscaling.ap-southeast-1.amazonaws.com"

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .line 101
    invoke-static {v1, v3, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-identity.ap-southeast-1.amazonaws.com"

    .line 102
    invoke-static {v1, v6, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-idp.ap-southeast-1.amazonaws.com"

    .line 104
    invoke-static {v1, v7, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-sync.ap-southeast-1.amazonaws.com"

    .line 105
    invoke-static {v1, v8, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "data.iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v22, v8

    move-object/from16 v8, v16

    .line 107
    invoke-static {v1, v8, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "dynamodb.ap-southeast-1.amazonaws.com"

    .line 108
    invoke-static {v1, v10, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "ec2.ap-southeast-1.amazonaws.com"

    .line 109
    invoke-static {v1, v11, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    .line 110
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v16, v12

    move-object/from16 v12, v24

    .line 112
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kinesis.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v23

    .line 113
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kms.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v17

    .line 114
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "lambda.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v18

    .line 115
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "logs.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v19

    .line 116
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "polly.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v20

    .line 117
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "s3.ap-southeast-1.amazonaws.com"

    move-object/from16 v12, v21

    .line 118
    invoke-static {v1, v12, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sdb"

    const-string v12, "sdb.ap-southeast-1.amazonaws.com"

    .line 119
    invoke-static {v1, v5, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sns.ap-southeast-1.amazonaws.com"

    .line 120
    invoke-static {v1, v13, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sqs.ap-southeast-1.amazonaws.com"

    .line 121
    invoke-static {v1, v9, v5, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 122
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v5, "ap-southeast-2"

    invoke-direct {v1, v5, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v25

    .line 125
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v12, "autoscaling.ap-southeast-2.amazonaws.com"

    .line 126
    invoke-static {v1, v3, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "cognito-identity.ap-southeast-2.amazonaws.com"

    .line 127
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "cognito-idp.ap-southeast-2.amazonaws.com"

    .line 129
    invoke-static {v1, v7, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "cognito-sync.ap-southeast-2.amazonaws.com"

    move-object/from16 v25, v7

    move-object/from16 v7, v22

    .line 130
    invoke-static {v1, v7, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "data.iot.ap-southeast-2.amazonaws.com"

    .line 132
    invoke-static {v1, v8, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "dynamodb.ap-southeast-2.amazonaws.com"

    .line 133
    invoke-static {v1, v10, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "ec2.ap-southeast-2.amazonaws.com"

    .line 134
    invoke-static {v1, v11, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    move-object/from16 v22, v8

    move-object/from16 v8, v16

    .line 135
    invoke-static {v1, v8, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "iot.ap-southeast-2.amazonaws.com"

    move-object/from16 v16, v7

    move-object/from16 v7, v24

    .line 137
    invoke-static {v1, v7, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "kinesis.ap-southeast-2.amazonaws.com"

    move-object/from16 v7, v23

    .line 138
    invoke-static {v1, v7, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "kms.ap-southeast-2.amazonaws.com"

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    .line 139
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "lambda.ap-southeast-2.amazonaws.com"

    move-object/from16 v6, v18

    .line 140
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "logs.ap-southeast-2.amazonaws.com"

    move-object/from16 v6, v19

    .line 141
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "polly.ap-southeast-2.amazonaws.com"

    move-object/from16 v6, v20

    .line 142
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "s3.ap-southeast-2.amazonaws.com"

    move-object/from16 v6, v21

    .line 143
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v12, "sdb"

    const-string v6, "sdb.ap-southeast-2.amazonaws.com"

    .line 144
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.ap-southeast-2.amazonaws.com"

    .line 145
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.ap-southeast-2.amazonaws.com"

    .line 146
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 147
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 149
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v6, "ca-central-1"

    invoke-direct {v1, v6, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.ca-central-1.amazonaws.com"

    .line 151
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.ca-central-1.amazonaws.com"

    .line 152
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.ca-central-1.amazonaws.com"

    .line 153
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.ca-central-1.amazonaws.com"

    .line 154
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kinesis.ca-central-1.amazonaws.com"

    .line 156
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kms.ca-central-1.amazonaws.com"

    move-object/from16 v12, v17

    .line 157
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "lambda.ca-central-1.amazonaws.com"

    move-object/from16 v12, v18

    .line 158
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "logs.ca-central-1.amazonaws.com"

    move-object/from16 v12, v19

    .line 159
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "polly.ca-central-1.amazonaws.com"

    move-object/from16 v12, v20

    .line 160
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "s3.ca-central-1.amazonaws.com"

    move-object/from16 v12, v21

    .line 161
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.ca-central-1.amazonaws.com"

    .line 162
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.ca-central-1.amazonaws.com"

    .line 163
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 164
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 166
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v6, "eu-central-1"

    invoke-direct {v1, v6, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-central-1.amazonaws.com"

    .line 168
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-identity.eu-central-1.amazonaws.com"

    move-object/from16 v21, v3

    move-object/from16 v3, v23

    .line 169
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-idp.eu-central-1.amazonaws.com"

    move-object/from16 v3, v25

    .line 171
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-sync.eu-central-1.amazonaws.com"

    move-object/from16 v3, v16

    .line 172
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "data.iot.eu-central-1.amazonaws.com"

    move-object/from16 v3, v22

    .line 173
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.eu-central-1.amazonaws.com"

    .line 174
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.eu-central-1.amazonaws.com"

    .line 175
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.eu-central-1.amazonaws.com"

    .line 176
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "firehose"

    move-object/from16 v22, v8

    const-string v8, "firehose.eu-central-1.amazonaws.com"

    .line 178
    invoke-static {v1, v6, v8, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "iot.eu-central-1.amazonaws.com"

    move-object/from16 v8, v24

    .line 179
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kinesis.eu-central-1.amazonaws.com"

    .line 180
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kms.eu-central-1.amazonaws.com"

    move-object/from16 v24, v7

    move-object/from16 v7, v17

    .line 181
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "lambda.eu-central-1.amazonaws.com"

    move-object/from16 v7, v18

    .line 182
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "logs.eu-central-1.amazonaws.com"

    move-object/from16 v7, v19

    .line 183
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "polly.eu-central-1.amazonaws.com"

    move-object/from16 v7, v20

    .line 184
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "s3.eu-central-1.amazonaws.com"

    .line 185
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.eu-central-1.amazonaws.com"

    .line 186
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.eu-central-1.amazonaws.com"

    .line 187
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 190
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v6, "eu-west-1"

    invoke-direct {v1, v6, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-west-1.amazonaws.com"

    move-object/from16 v20, v5

    move-object/from16 v5, v21

    .line 192
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-identity.eu-west-1.amazonaws.com"

    move-object/from16 v5, v23

    .line 193
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-idp.eu-west-1.amazonaws.com"

    move-object/from16 v5, v25

    .line 195
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-sync.eu-west-1.amazonaws.com"

    move-object/from16 v5, v16

    .line 196
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "data.iot.eu-west-1.amazonaws.com"

    .line 197
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.eu-west-1.amazonaws.com"

    .line 198
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.eu-west-1.amazonaws.com"

    .line 199
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.eu-west-1.amazonaws.com"

    move-object/from16 v16, v3

    move-object/from16 v3, v22

    .line 200
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "email"

    const-string v3, "email.eu-west-1.amazonaws.com"

    .line 202
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "firehose"

    const-string v6, "firehose.eu-west-1.amazonaws.com"

    .line 203
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "iot.eu-west-1.amazonaws.com"

    .line 204
    invoke-static {v1, v8, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kinesis.eu-west-1.amazonaws.com"

    move-object/from16 v6, v24

    .line 205
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kms.eu-west-1.amazonaws.com"

    move-object/from16 v6, v17

    .line 206
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "lambda.eu-west-1.amazonaws.com"

    move-object/from16 v6, v18

    .line 207
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "logs.eu-west-1.amazonaws.com"

    move-object/from16 v6, v19

    .line 208
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "machinelearning"

    const-string v6, "machinelearning.eu-west-1.amazonaws.com"

    .line 209
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "polly.eu-west-1.amazonaws.com"

    .line 211
    invoke-static {v1, v7, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "rekognition"

    const-string v6, "rekognition.eu-west-1.amazonaws.com"

    .line 212
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "s3.eu-west-1.amazonaws.com"

    .line 213
    invoke-static {v1, v12, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sdb"

    const-string v6, "sdb.eu-west-1.amazonaws.com"

    .line 214
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sns.eu-west-1.amazonaws.com"

    .line 215
    invoke-static {v1, v13, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sqs.eu-west-1.amazonaws.com"

    .line 216
    invoke-static {v1, v9, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 217
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 219
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v3, "eu-west-2"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    .line 220
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-west-2.amazonaws.com"

    move-object/from16 v3, v21

    .line 221
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-identity.eu-west-2.amazonaws.com"

    move-object/from16 v3, v23

    .line 222
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-idp.eu-west-2.amazonaws.com"

    move-object/from16 v3, v25

    .line 224
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-sync.eu-west-2.amazonaws.com"

    .line 225
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.eu-west-2.amazonaws.com"

    .line 226
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.eu-west-2.amazonaws.com"

    .line 227
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.eu-west-2.amazonaws.com"

    move-object/from16 v25, v5

    move-object/from16 v5, v22

    .line 228
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "iot.eu-west-2.amazonaws.com"

    .line 230
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kinesis.eu-west-2.amazonaws.com"

    move-object/from16 v22, v8

    move-object/from16 v8, v24

    .line 231
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kms.eu-west-2.amazonaws.com"

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    .line 232
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "lambda.eu-west-2.amazonaws.com"

    move-object/from16 v3, v18

    .line 233
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "logs.eu-west-2.amazonaws.com"

    move-object/from16 v3, v19

    .line 234
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "polly.eu-west-2.amazonaws.com"

    .line 235
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "s3.eu-west-2.amazonaws.com"

    .line 236
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.eu-west-2.amazonaws.com"

    .line 237
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.eu-west-2.amazonaws.com"

    .line 238
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 239
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v6, "eu-west-3"

    invoke-direct {v1, v6, v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 242
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.eu-west-3.amazonaws.com"

    move-object/from16 v19, v2

    move-object/from16 v2, v21

    .line 243
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.eu-west-3.amazonaws.com"

    .line 244
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.eu-west-3.amazonaws.com"

    .line 245
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.eu-west-3.amazonaws.com"

    .line 246
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kinesis.eu-west-3.amazonaws.com"

    .line 248
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kms.eu-west-3.amazonaws.com"

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    .line 249
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "lambda.eu-west-3.amazonaws.com"

    move-object/from16 v8, v18

    .line 250
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "logs.eu-west-3.amazonaws.com"

    .line 251
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "polly.eu-west-3.amazonaws.com"

    .line 252
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "s3.eu-west-3.amazonaws.com"

    .line 253
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.eu-west-3.amazonaws.com"

    .line 254
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.eu-west-3.amazonaws.com"

    .line 255
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 256
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 258
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v6, "sa-east-1"

    move-object/from16 v0, v19

    invoke-direct {v1, v6, v0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 259
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.sa-east-1.amazonaws.com"

    const/4 v0, 0x0

    .line 260
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.sa-east-1.amazonaws.com"

    .line 261
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.sa-east-1.amazonaws.com"

    .line 262
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.sa-east-1.amazonaws.com"

    .line 263
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kinesis.sa-east-1.amazonaws.com"

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    .line 265
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "kms.sa-east-1.amazonaws.com"

    move-object/from16 v5, v17

    .line 266
    invoke-static {v1, v5, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "lambda.sa-east-1.amazonaws.com"

    .line 267
    invoke-static {v1, v8, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "logs.sa-east-1.amazonaws.com"

    .line 268
    invoke-static {v1, v3, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "polly.sa-east-1.amazonaws.com"

    .line 269
    invoke-static {v1, v7, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "s3.sa-east-1.amazonaws.com"

    .line 270
    invoke-static {v1, v12, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sdb"

    move-object/from16 v17, v12

    const-string v12, "sdb.sa-east-1.amazonaws.com"

    .line 271
    invoke-static {v1, v6, v12, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sns.sa-east-1.amazonaws.com"

    .line 272
    invoke-static {v1, v13, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "sqs.sa-east-1.amazonaws.com"

    .line 273
    invoke-static {v1, v9, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 274
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 276
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string/jumbo v6, "us-east-1"

    move-object/from16 v12, v19

    invoke-direct {v1, v6, v12}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 277
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "autoscaling.us-east-1.amazonaws.com"

    .line 278
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-identity.us-east-1.amazonaws.com"

    move-object/from16 v19, v2

    move-object/from16 v2, v23

    .line 279
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-idp.us-east-1.amazonaws.com"

    move-object/from16 v2, v24

    .line 281
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "cognito-sync.us-east-1.amazonaws.com"

    move-object/from16 v2, v25

    .line 282
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "data.iot.us-east-1.amazonaws.com"

    move-object/from16 v2, v16

    .line 283
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "dynamodb.us-east-1.amazonaws.com"

    .line 284
    invoke-static {v1, v10, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "ec2.us-east-1.amazonaws.com"

    .line 285
    invoke-static {v1, v11, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "elasticloadbalancing.us-east-1.amazonaws.com"

    move-object/from16 v2, v18

    .line 286
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "email"

    const-string v2, "email.us-east-1.amazonaws.com"

    .line 288
    invoke-static {v1, v6, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "firehose"

    const-string v6, "firehose.us-east-1.amazonaws.com"

    .line 289
    invoke-static {v1, v2, v6, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot.us-east-1.amazonaws.com"

    move-object/from16 v6, v22

    .line 290
    invoke-static {v1, v6, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis.us-east-1.amazonaws.com"

    move-object/from16 v6, v21

    .line 291
    invoke-static {v1, v6, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms.us-east-1.amazonaws.com"

    .line 292
    invoke-static {v1, v5, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda.us-east-1.amazonaws.com"

    .line 293
    invoke-static {v1, v8, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "logs.us-east-1.amazonaws.com"

    .line 294
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "machinelearning"

    move-object/from16 v21, v3

    const-string v3, "machinelearning.us-east-1.amazonaws.com"

    .line 295
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "mobileanalytics"

    const-string v3, "mobileanalytics.us-east-1.amazonaws.com"

    .line 297
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "pinpoint"

    const-string v3, "pinpoint.us-east-1.amazonaws.com"

    .line 299
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly.us-east-1.amazonaws.com"

    .line 300
    invoke-static {v1, v7, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "rekognition"

    const-string v3, "rekognition.us-east-1.amazonaws.com"

    .line 301
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3.amazonaws.com"

    move-object/from16 v3, v17

    .line 302
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.amazonaws.com"

    .line 303
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns.us-east-1.amazonaws.com"

    .line 304
    invoke-static {v1, v13, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs.us-east-1.amazonaws.com"

    .line 305
    invoke-static {v1, v9, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 306
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 308
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string/jumbo v2, "us-east-2"

    invoke-direct {v1, v2, v12}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 309
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.us-east-2.amazonaws.com"

    move-object/from16 v2, v19

    .line 310
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "cognito-identity.us-east-2.amazonaws.com"

    move-object/from16 v2, v23

    .line 311
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "cognito-idp.us-east-2.amazonaws.com"

    move-object/from16 v2, v24

    .line 313
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "cognito-sync.us-east-2.amazonaws.com"

    move-object/from16 v2, v25

    .line 314
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "dynamodb.us-east-2.amazonaws.com"

    .line 315
    invoke-static {v1, v10, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "ec2.us-east-2.amazonaws.com"

    .line 316
    invoke-static {v1, v11, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "elasticloadbalancing.us-east-2.amazonaws.com"

    move-object/from16 v2, v18

    .line 317
    invoke-static {v1, v2, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "firehose"

    const-string v2, "firehose.us-east-2.amazonaws.com"

    .line 319
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot.us-east-2.amazonaws.com"

    move-object/from16 v3, v22

    .line 320
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis.us-east-2.amazonaws.com"

    .line 321
    invoke-static {v1, v6, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms.us-east-2.amazonaws.com"

    .line 322
    invoke-static {v1, v5, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda.us-east-2.amazonaws.com"

    .line 323
    invoke-static {v1, v8, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "logs.us-east-2.amazonaws.com"

    move-object/from16 v3, v21

    .line 324
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly.us-east-2.amazonaws.com"

    .line 325
    invoke-static {v1, v7, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3.us-east-2.amazonaws.com"

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    .line 326
    invoke-static {v1, v7, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns.us-east-2.amazonaws.com"

    .line 327
    invoke-static {v1, v13, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs.us-east-2.amazonaws.com"

    .line 328
    invoke-static {v1, v9, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 329
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 331
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string/jumbo v2, "us-west-1"

    invoke-direct {v1, v2, v12}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 332
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling.us-west-1.amazonaws.com"

    move-object/from16 v17, v12

    move-object/from16 v12, v19

    .line 333
    invoke-static {v1, v12, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb.us-west-1.amazonaws.com"

    .line 334
    invoke-static {v1, v10, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2.us-west-1.amazonaws.com"

    .line 335
    invoke-static {v1, v11, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing.us-west-1.amazonaws.com"

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    .line 336
    invoke-static {v1, v11, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis.us-west-1.amazonaws.com"

    .line 338
    invoke-static {v1, v6, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms.us-west-1.amazonaws.com"

    .line 339
    invoke-static {v1, v5, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda.us-west-1.amazonaws.com"

    .line 340
    invoke-static {v1, v8, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "logs.us-west-1.amazonaws.com"

    .line 341
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly.us-west-1.amazonaws.com"

    move-object/from16 v18, v3

    move-object/from16 v3, v21

    .line 342
    invoke-static {v1, v3, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3.us-west-1.amazonaws.com"

    .line 343
    invoke-static {v1, v7, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    move-object/from16 v21, v7

    const-string v7, "sdb.us-west-1.amazonaws.com"

    .line 344
    invoke-static {v1, v2, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns.us-west-1.amazonaws.com"

    .line 345
    invoke-static {v1, v13, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs.us-west-1.amazonaws.com"

    .line 346
    invoke-static {v1, v9, v2, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 347
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 349
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string/jumbo v2, "us-west-2"

    move-object/from16 v7, v17

    invoke-direct {v1, v2, v7}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 350
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "autoscaling.us-west-2.amazonaws.com"

    .line 351
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "cognito-identity.us-west-2.amazonaws.com"

    move-object/from16 v20, v12

    move-object/from16 v12, v23

    .line 352
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "cognito-idp.us-west-2.amazonaws.com"

    move-object/from16 v12, v24

    .line 354
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "cognito-sync.us-west-2.amazonaws.com"

    move-object/from16 v12, v25

    .line 355
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "data.iot.us-west-2.amazonaws.com"

    move-object/from16 v12, v16

    .line 356
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "dynamodb.us-west-2.amazonaws.com"

    .line 357
    invoke-static {v1, v10, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "ec2.us-west-2.amazonaws.com"

    move-object/from16 v12, v19

    .line 358
    invoke-static {v1, v12, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "elasticloadbalancing.us-west-2.amazonaws.com"

    .line 359
    invoke-static {v1, v11, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "email"

    move-object/from16 v16, v11

    const-string v11, "email.us-west-2.amazonaws.com"

    .line 361
    invoke-static {v1, v7, v11, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "firehose"

    const-string v11, "firehose.us-west-2.amazonaws.com"

    .line 362
    invoke-static {v1, v7, v11, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "iot.us-west-2.amazonaws.com"

    move-object/from16 v11, v22

    .line 363
    invoke-static {v1, v11, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "kinesis.us-west-2.amazonaws.com"

    .line 364
    invoke-static {v1, v6, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "kms.us-west-2.amazonaws.com"

    .line 365
    invoke-static {v1, v5, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "lambda.us-west-2.amazonaws.com"

    .line 366
    invoke-static {v1, v8, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "logs.us-west-2.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .line 367
    invoke-static {v1, v5, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "polly.us-west-2.amazonaws.com"

    .line 368
    invoke-static {v1, v3, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "rekognition"

    const-string v7, "rekognition.us-west-2.amazonaws.com"

    .line 369
    invoke-static {v1, v3, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "s3.us-west-2.amazonaws.com"

    move-object/from16 v7, v21

    .line 370
    invoke-static {v1, v7, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sdb"

    const-string v7, "sdb.us-west-2.amazonaws.com"

    .line 371
    invoke-static {v1, v3, v7, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sns.us-west-2.amazonaws.com"

    .line 372
    invoke-static {v1, v13, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sqs.us-west-2.amazonaws.com"

    .line 373
    invoke-static {v1, v9, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 374
    invoke-static {v1, v15, v4, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 376
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v3, "cn-north-1"

    const-string v7, "amazonaws.com.cn"

    invoke-direct {v1, v3, v7}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.cn-north-1.amazonaws.com.cn"

    move-object/from16 v7, v20

    .line 378
    invoke-static {v1, v7, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "cognito-identity.cn-north-1.amazonaws.com.cn"

    move-object/from16 v25, v4

    move-object/from16 v4, v23

    .line 379
    invoke-static {v1, v4, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "dynamodb.cn-north-1.amazonaws.com.cn"

    .line 381
    invoke-static {v1, v10, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "ec2.cn-north-1.amazonaws.com.cn"

    .line 382
    invoke-static {v1, v12, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    move-object/from16 v4, v16

    .line 383
    invoke-static {v1, v4, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "iot.cn-north-1.amazonaws.com.cn"

    .line 385
    invoke-static {v1, v11, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kinesis.cn-north-1.amazonaws.com.cn"

    .line 386
    invoke-static {v1, v6, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "lambda.cn-north-1.amazonaws.com.cn"

    .line 387
    invoke-static {v1, v8, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "logs.cn-north-1.amazonaws.com.cn"

    .line 388
    invoke-static {v1, v5, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "s3.cn-north-1.amazonaws.com.cn"

    move-object/from16 v24, v11

    move-object/from16 v11, v21

    .line 389
    invoke-static {v1, v11, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sns.cn-north-1.amazonaws.com.cn"

    .line 390
    invoke-static {v1, v13, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sqs.cn-north-1.amazonaws.com.cn"

    .line 391
    invoke-static {v1, v9, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sts.cn-north-1.amazonaws.com.cn"

    .line 392
    invoke-static {v1, v15, v3, v0, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 394
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v3, "cn-northwest-1"

    const-string v0, "amazonaws.com.cn"

    invoke-direct {v1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "autoscaling.cn-northwest-1.amazonaws.com.cn"

    const/4 v3, 0x0

    .line 396
    invoke-static {v1, v7, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "dynamodb.cn-northwest-1.amazonaws.com.cn"

    .line 398
    invoke-static {v1, v10, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ec2.cn-northwest-1.amazonaws.com.cn"

    .line 399
    invoke-static {v1, v12, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "elasticloadbalancing.cn-northwest-1.amazonaws.com.cn"

    .line 400
    invoke-static {v1, v4, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "kinesis.cn-northwest-1.amazonaws.com.cn"

    .line 402
    invoke-static {v1, v6, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "logs.cn-northwest-1.amazonaws.com.cn"

    .line 403
    invoke-static {v1, v5, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "s3.cn-northwest-1.amazonaws.com.cn"

    .line 404
    invoke-static {v1, v11, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sns.cn-northwest-1.amazonaws.com.cn"

    .line 405
    invoke-static {v1, v13, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sqs.cn-northwest-1.amazonaws.com.cn"

    .line 406
    invoke-static {v1, v9, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sts.amazonaws.com.cn"

    .line 407
    invoke-static {v1, v15, v0, v3, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 409
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string/jumbo v1, "us-gov-west-1"

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v3}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "autoscaling.us-gov-west-1.amazonaws.com"

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .line 411
    invoke-static {v0, v7, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dynamodb.us-gov-west-1.amazonaws.com"

    .line 412
    invoke-static {v0, v10, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ec2.us-gov-west-1.amazonaws.com"

    .line 413
    invoke-static {v0, v12, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    .line 414
    invoke-static {v0, v4, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "kinesis.us-gov-west-1.amazonaws.com"

    .line 416
    invoke-static {v0, v6, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "kms.us-gov-west-1.amazonaws.com"

    move-object/from16 v16, v6

    move-object/from16 v6, v19

    .line 417
    invoke-static {v0, v6, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "lambda.us-gov-west-1.amazonaws.com"

    .line 418
    invoke-static {v0, v8, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "logs.us-gov-west-1.amazonaws.com"

    .line 419
    invoke-static {v0, v5, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "rekognition"

    move-object/from16 v19, v5

    const-string v5, "rekognition.us-gov-west-1.amazonaws.com"

    .line 420
    invoke-static {v0, v1, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "s3.us-gov-west-1.amazonaws.com"

    .line 421
    invoke-static {v0, v11, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sns.us-gov-west-1.amazonaws.com"

    .line 422
    invoke-static {v0, v13, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sqs.us-gov-west-1.amazonaws.com"

    .line 423
    invoke-static {v0, v9, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v1, v25

    .line 424
    invoke-static {v0, v15, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 426
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    const-string v5, "eu-north-1"

    invoke-direct {v0, v5, v3}, Lcom/amazon/kindle/com/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    .line 427
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "autoscaling.eu-north-1.amazonaws.com"

    .line 428
    invoke-static {v0, v7, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "dynamodb.eu-north-1.amazonaws.com"

    .line 429
    invoke-static {v0, v10, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "ec2.eu-north-1.amazonaws.com"

    .line 430
    invoke-static {v0, v12, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "elasticloadbalancing.eu-north-1.amazonaws.com"

    .line 431
    invoke-static {v0, v4, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    const-string v5, "firehose.eu-north-1.amazonaws.com"

    .line 433
    invoke-static {v0, v4, v5, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.eu-north-1.amazonaws.com"

    move-object/from16 v5, v24

    .line 434
    invoke-static {v0, v5, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.eu-north-1.amazonaws.com"

    move-object/from16 v5, v16

    .line 435
    invoke-static {v0, v5, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.eu-north-1.amazonaws.com"

    .line 436
    invoke-static {v0, v6, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.eu-north-1.amazonaws.com"

    .line 437
    invoke-static {v0, v8, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.eu-north-1.amazonaws.com"

    move-object/from16 v5, v19

    .line 438
    invoke-static {v0, v5, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.eu-north-1.amazonaws.com"

    .line 439
    invoke-static {v0, v11, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.eu-north-1.amazonaws.com"

    .line 440
    invoke-static {v0, v13, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.eu-north-1.amazonaws.com"

    .line 441
    invoke-static {v0, v9, v4, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 442
    invoke-static {v0, v15, v1, v2, v14}, Lcom/amazon/kindle/com/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3
.end method

.method private static updateRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getHttpSupport()Ljava/util/Map;

    move-result-object v1

    .line 452
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getHttpsSupport()Ljava/util/Map;

    move-result-object p0

    .line 454
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
