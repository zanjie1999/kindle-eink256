.class final Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonConfigurationInstances"
.end annotation


# instance fields
.field activity:Ljava/lang/Object;

.field children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field custom:Ljava/lang/Object;

.field fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field loaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray<",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
