.class public interface abstract Lcom/audible/mobile/domain/RequestId;
.super Ljava/lang/Object;
.source "RequestId.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/RequestId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/RequestId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/RequestId;->NONE:Lcom/audible/mobile/domain/RequestId;

    return-void
.end method
