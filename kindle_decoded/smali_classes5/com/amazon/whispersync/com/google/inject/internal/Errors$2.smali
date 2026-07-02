.class final Lcom/amazon/whispersync/com/google/inject/internal/Errors$2;
.super Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 645
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 643
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$2;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
