.class final Lcom/amazon/whispersync/com/google/inject/internal/Errors$3;
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
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 648
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$3;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 0

    .line 650
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
