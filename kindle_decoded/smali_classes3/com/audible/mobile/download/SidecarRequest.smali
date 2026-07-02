.class public final Lcom/audible/mobile/download/SidecarRequest;
.super Lcom/audible/mobile/download/Request;
.source "SidecarRequest.java"


# static fields
.field private static final FALLBACK_GUID:Lcom/audible/mobile/domain/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    const-string v1, "1"

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/download/SidecarRequest;->FALLBACK_GUID:Lcom/audible/mobile/domain/GUID;

    return-void
.end method
