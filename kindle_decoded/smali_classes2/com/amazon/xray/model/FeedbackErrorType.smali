.class public Lcom/amazon/xray/model/FeedbackErrorType;
.super Ljava/lang/Object;
.source "FeedbackErrorType.java"


# instance fields
.field private final longErrorTypeString:Ljava/lang/String;

.field private final shortErrorTypeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/xray/model/FeedbackErrorType;->longErrorTypeString:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/xray/model/FeedbackErrorType;->shortErrorTypeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLongErrorTypeString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/xray/model/FeedbackErrorType;->longErrorTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getShortErrorTypeString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/xray/model/FeedbackErrorType;->shortErrorTypeString:Ljava/lang/String;

    return-object v0
.end method
