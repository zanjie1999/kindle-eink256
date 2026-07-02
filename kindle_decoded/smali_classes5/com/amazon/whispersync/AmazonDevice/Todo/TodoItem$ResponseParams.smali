.class public Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;
.super Ljava/lang/Object;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseParams"
.end annotation


# instance fields
.field public mAccountId:Ljava/lang/String;

.field public mAction:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mSequence:J

.field public mTodoVersion:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
