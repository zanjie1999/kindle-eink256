.class final Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;
.super Ljava/lang/Object;
.source "WordWiseModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 131
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->resyncDictionary()V

    return-void
.end method
