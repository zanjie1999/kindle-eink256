.class Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder$1;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder$1;->this$0:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)V
    .locals 0

    return-void
.end method
