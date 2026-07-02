.class public interface abstract Lcom/audible/mobile/domain/ACR;
.super Ljava/lang/Object;
.source "ACR.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/ACR;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/ACR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    return-void
.end method
