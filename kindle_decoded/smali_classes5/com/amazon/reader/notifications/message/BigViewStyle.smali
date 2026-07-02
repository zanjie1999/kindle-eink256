.class public Lcom/amazon/reader/notifications/message/BigViewStyle;
.super Ljava/lang/Object;
.source "BigViewStyle.java"


# instance fields
.field private bigViewData:Lcom/amazon/reader/notifications/message/BigViewData;

.field private style:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewStyle;->bigViewData:Lcom/amazon/reader/notifications/message/BigViewData;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewStyle;->style:Ljava/lang/String;

    return-object v0
.end method

.method public setBigViewData(Lcom/amazon/reader/notifications/message/BigViewData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewStyle;->bigViewData:Lcom/amazon/reader/notifications/message/BigViewData;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewStyle;->style:Ljava/lang/String;

    return-void
.end method
