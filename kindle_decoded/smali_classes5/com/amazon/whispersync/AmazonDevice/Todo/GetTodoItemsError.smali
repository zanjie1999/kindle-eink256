.class public Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsError;
.super Ljava/lang/Object;
.source "GetTodoItemsError.java"


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsErrorType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsErrorType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Todo/GetTodoItemsErrorType;

    return-object v0
.end method
