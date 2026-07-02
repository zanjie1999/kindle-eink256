.class public Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemError;
.super Ljava/lang/Object;
.source "RemoveTodoItemError.java"


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    return-object v0
.end method
