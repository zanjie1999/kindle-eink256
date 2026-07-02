.class public Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
.super Ljava/lang/Exception;
.source "ErrorsException.java"


# instance fields
.field private final errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void
.end method


# virtual methods
.method public getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-object v0
.end method
