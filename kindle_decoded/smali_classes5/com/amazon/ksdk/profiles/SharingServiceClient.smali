.class public abstract Lcom/amazon/ksdk/profiles/SharingServiceClient;
.super Ljava/lang/Object;
.source "SharingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBookSharing(Ljava/lang/String;Lcom/amazon/ksdk/profiles/GetBookSharingCallback;)V
.end method

.method public abstract getSharedBooks(Ljava/lang/String;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBookSharing(Lcom/amazon/ksdk/profiles/SharingRequestProperties;ZLcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
.end method

.method public abstract shareBooks(Lcom/amazon/ksdk/profiles/SharingRequestProperties;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/profiles/SharingRequestProperties;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Lcom/amazon/ksdk/profiles/SimpleRequestCallback;",
            ")V"
        }
    .end annotation
.end method
