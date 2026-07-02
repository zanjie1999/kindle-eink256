.class public Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;
.super Ljava/lang/Object;
.source "PersistentSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/system/io/PersistentSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySettings"
.end annotation


# instance fields
.field private binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;


# direct methods
.method private constructor <init>(Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;Lcom/amazon/system/io/PersistentSettingsHelper$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;-><init>(Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;)V

    return-void
.end method
