.class public Lcom/audible/mobile/network/apis/domain/ImmutableProductReviewIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableProductReviewIdImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/ProductReviewId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/network/apis/domain/ProductReviewId;",
        ">;",
        "Lcom/audible/mobile/network/apis/domain/ProductReviewId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/ProductReviewId;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/audible/mobile/network/apis/domain/ImmutableProductReviewIdImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/ImmutableProductReviewIdImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ImmutableProductReviewIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method
