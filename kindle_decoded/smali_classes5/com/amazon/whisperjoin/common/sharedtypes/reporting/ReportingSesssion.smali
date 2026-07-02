.class public Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;
.super Ljava/lang/Object;
.source "ReportingSesssion.java"


# instance fields
.field private mSequenceNumber:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->mSequenceNumber:I

    return-void
.end method


# virtual methods
.method public getNextSequenceNumber()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->mSequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->mSequenceNumber:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->mUrl:Ljava/lang/String;

    return-object v0
.end method
